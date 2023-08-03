@extends('layouts.frontend')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('E-posta Adresinizi Doğrulayın') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('Yeni bir doğrulama bağlantısı e-posta adresinize gönderildi.') }}
                        </div>
                    @endif

                    {{ __('Devam etmeden önce, doğrulama bağlantısı için e-postanızı kontrol edin.') }}
                    {{ __('E-postayı almadıysanız') }}, <a href="{{ route('verification.resend') }}">{{ __('başka bir tane istemek için buraya tıklayın') }}</a>.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
