 <!-- NAVBAR COMPONENT -->
 <nav class="flex items-center justify-between flex-wrap bg-gray-800 p-6">
  <div class="flex items-center flex-shrink-0 text-white mr-6">
    <span class="font-bold text-xl">Star Wars API ColdFusion</span>
  </div>
<!--- Planets, Spaceships, Vehicles, People, Films and Species --->
  <div class="w-full block flex-grow sm:flex sm:items-center sm:w-auto">
    <div class="text-sm sm:flex-grow">
      <a href="index.cfm"               class="block mt-4 sm:inline-block sm:mt-0 text-teal-200 hover:text-white mr-4">Home</a>

      <cfscript>
        for(page in request.swlist) {
          WriteOutput('<a href="index.cfm?sw=#page#" class="block mt-4 sm:inline-block sm:mt-0 text-teal-200 hover:text-white mr-4">#reReplace(page,"(^[a-z]|\s+[a-z])","\U\1","ALL")#</a>');
        }
      </cfscript>
    </div>
    <div>
    <!--- <a href="#" class="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-blue-500 hover:bg-white mt-4 md:mt-0">Login</a> --->
  </div>
  </div>
</nav>


