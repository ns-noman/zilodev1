<a class="list-group-item list-group-item-action text-secondary
    {{ request()->is('user/profile*') ? 'active' : '' }}" href="{{ url('user/profile') }}">
    {{ __('translate.my_profile') }}
</a>
<a class="list-group-item list-group-item-action text-secondary
    {{ request()->is('user/change-password*') ? 'active' : '' }}" href="{{ url('user/change-password') }}">
    {{ __('translate.change_password') }}
</a>
<a class="list-group-item list-group-item-action text-secondary 
    {{ request()->is('user/address-book*') ? 'active' : '' }}" href="{{ url('user/address-book') }}">
    {{ __('translate.address_book') }}
</a>
<a class="list-group-item list-group-item-action text-secondary
    {{ request()->is('user/my-orders*') ? 'active' : '' }}" href="{{ url('user/my-orders') }}">
    {{ __('translate.my_orders') }}
</a>
<a class="list-group-item list-group-item-action text-secondary
    {{ request()->is('wish-list*') ? 'active' : '' }}" href="{{ url('/wish-list') }}">
    {{ __('translate.wish_list') }}
</a>
<form action="{{ url('/user/logout') }}" method="POST">
    @csrf
    <button type="submit" class="list-group-item list-group-item-action text-secondary" href="#">
        {{ __('translate.sign_out') }}
    </button>
</form> 