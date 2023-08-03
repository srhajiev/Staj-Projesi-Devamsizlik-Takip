<div style="background: white!important;" class="sidebar hidden sm:block w-0 sm:w-1/6 bg-gray-200 h-screen shadow fixed top-0 left-0 bottom-0 z-40 overflow-y-auto">
    <div class="mb-6 mt-20 px-6">
        <a style="
    margin: 6px;
" href="{{ route('home') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
            <i   style="font-size: 23px;" class="fa-solid fa-gauge"></i>
            <span   style="font-size: 23px;" class="ml-2 text-sm font-semibold">Panel</span>
        </a>
        @role('Admin')
        <a style="
    margin: 6px;
" href="{{ route('classes.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i  style="font-size: 23px;"  class="fa-solid fa-door-closed"></i>
            <span   style="font-size: 23px;" class="ml-2 text-sm font-semibold">Sınıflar</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('subject.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i  style="font-size: 23px;" class="fa-solid fa-book-open-reader"></i>
            <span  style="font-size: 23px;" class="ml-2 text-sm font-semibold">Dersler</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('teacher.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
            <i   style="font-size: 23px;" class="fa-solid fa-person-chalkboard"></i>
            <span  style="font-size: 23px;"  class="ml-2 text-sm font-semibold">Öğretmenler</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('parents.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i   style="font-size: 23px;" class="fa-solid fa-people-roof"></i>
            <span  style="font-size: 23px;"  class="ml-2 text-sm font-semibold">Veliler</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('student.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
           <i   style="font-size: 23px;" class="fa-solid fa-graduation-cap"></i>
            <span   style="font-size: 23px;" class="ml-2 text-sm font-semibold">Öğrenciler</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('attendance.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i  style="font-size: 23px;"  class="fa-solid fa-file-signature"></i>
            <span  style="font-size: 23px;"  class="ml-2 text-sm font-semibold">Katılım</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('assignrole.index') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i   style="font-size: 23px;" class="fa-solid fa-building-circle-exclamation"></i>
            <span   style="font-size: 23px;" class="ml-2 text-sm font-semibold">Rol Atama</span>
        </a>
        <a style="
    margin: 6px;
" href="{{ route('roles-permissions') }}" class="flex items-center text-gray-600 py-2 hover:text-blue-700">
          <i   style="font-size: 23px;" class="fa-solid fa-users"></i>
            <span  style="font-size: 23px;"  class="ml-2 text-sm font-semibold">Roller ve İzinleri</span>
        </a>
        @endrole
    </div>
</div>