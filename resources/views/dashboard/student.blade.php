<div class="mt-8 bg-white rounded">
    <div class="w-full max-w-2xl px-6 py-12">

        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    İsim : 
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="block text-gray-600 font-bold">{{ $student->user->name }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    E-posta :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->user->email }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Numara :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->roll_number }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Telefon :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->phone }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Cinsiyet :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->gender }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Doğum Tarihi :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->dateofbirth }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Geçici Adres :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->current_address }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Kalıcı Adres :
                </label>
            </div>
            <div class="md:w-2/3">
                <span class="text-gray-600 font-bold">{{ $student->permanent_address }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Sınıf :
                </label>
            </div>
            <div class="md:w-2/3 block text-gray-600 font-bold">
                <span class="text-gray-600 font-bold">{{ $student->class->class_name }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Öğrenci Velisi :
                </label>
            </div>
            <div class="md:w-2/3 block text-gray-600 font-bold">
                <span class="text-gray-600 font-bold">{{ $student->parent->user->name }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Velinin E-posta Adresi :
                </label>
            </div>
            <div class="md:w-2/3 block text-gray-600 font-bold">
                <span class="text-gray-600 font-bold">{{ $student->parent->user->email }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Velinin Telefon Numarası :
                </label>
            </div>
            <div class="md:w-2/3 block text-gray-600 font-bold">
                <span class="text-gray-600 font-bold">{{ $student->parent->phone }}</span>
            </div>
        </div>
        <div class="md:flex md:items-center mb-6">
            <div class="md:w-1/3">
                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4">
                    Velinin Adresi :
                </label>
            </div>
            <div class="md:w-2/3 block text-gray-600 font-bold">
                <span class="text-gray-600 font-bold">{{ $student->parent->current_address }}</span>
            </div>
        </div>

        <div class="w-full px-0 md:px-6 py-12">
            <div class="flex items-center bg-gray-200">
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Kod</div>
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Ders</div>
                <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">Öğretmen</div>
            </div>
            @foreach ($student->class->subjects as $subject)
                <div class="flex items-center justify-between border border-gray-200 -mb-px">
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium">{{ $subject->subject_code }}</div>
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium">{{ $subject->name }}</div>
                    <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-medium">{{ $subject->teacher->user->name }}</div>
                </div>
            @endforeach
        </div>

        <div class="w-full px-0 md:px-6 py-12">
            <div class="flex items-center bg-gray-200">
                <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Tarih</div>
                <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Sınıf</div>
                <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-semibold">Öğretmen</div>
                <div class="w-1/4 text-right text-gray-600 py-2 px-4 font-semibold">Katılım Durumu</div>
            </div>
            @foreach ($student->attendances as $attendance)
                <div class="flex items-center justify-between border border-gray-200 -mb-px">
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium">{{ $attendance->attendence_date }}</div>
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium">{{ $attendance->class->class_name }}</div>
                    <div class="w-1/4 text-left text-gray-600 py-2 px-4 font-medium">{{ $attendance->teacher->user->name }}</div>
                    <div class="w-1/4 text-right text-gray-600 py-2 px-4 font-medium">
                        @if($attendance->attendence_status)
                            <span class="text-xs text-white bg-green-500 px-2 py-1 rounded">P</span>
                        @else
                            <span class="text-xs text-white bg-red-500 px-2 py-1 rounded">A</span>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
    </div>        
</div>
