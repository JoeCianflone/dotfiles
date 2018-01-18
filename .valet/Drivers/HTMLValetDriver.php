<?php
/** 
 * Simple Valet driver to serve up single HTML pages
 * This is great if you're just going to mock up something
 * or need to test out an email. Anything where you're not 
 * interested in serving up a full application
 */ 
class HTMLValetDriver extends ValetDriver
{
   /**
   * Determine if the driver serves the request.
   *
   * @param  string  $sitePath
   * @param  string  $siteName
   * @param  string  $uri
   * @return bool
   */
   public function serves($sitePath, $siteName, $uri)
   {
      if (file_exists($sitePath.'/index.htm') || file_exists($sitePath.'/index.html')) {
         return true;
      }

      return false;
   }

   /**
   * Determine if the incoming request is for a static file.
   *
   * @param  string  $sitePath
   * @param  string  $siteName
   * @param  string  $uri
   * @return string|false
   */
   public function isStaticFile($sitePath, $siteName, $uri)
   {
      if (file_exists($staticFilePath = $sitePath.'/'.$uri)) {
         return $staticFilePath;
      }

      return false;
   }

   /**
   * Get the fully resolved path to the application's front controller.
   *
   * @param  string  $sitePath
   * @param  string  $siteName
   * @param  string  $uri
   * @return string
   */
   public function frontControllerPath($sitePath, $siteName, $uri)
   {
      if (file_exists($sitePath.'/index.htm')) {
         return $sitePath.'/index.htm';
      }

      return $sitePath.'/index.html';
   }
}
