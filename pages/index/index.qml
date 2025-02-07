<view>
  <view class="cu-bar fixed bg-gradual-red" style="height: 4rem;"></view>
  <view class="body">
    <view wx:if="{{router === 'vol'}}" style="margin-top: 4rem;">
      <activity actType="vol" activityList="{{actList}}"/>
    </view>
    <view wx:elif="{{router === 'me'}}" style="margin-top: 4rem;">
      <users id="users" wx:if="{{userType === 'vol'}}" />
    </view>
    <view wx:elif="{{router === 'work'}}" style="margin-top: 4rem">
      <work />
    </view>
  </view>
  <view class="cu-bar tabbar bg-white foot">
    <view wx:if="{{userType === 'stf'}}" class="action" bindtap="toWork">
      <view class="text-{{workClr}}">
        <text class="cuIcon-activity"></text>
        当前工作
      </view>
    </view>
    <view class="action" bindtap="toVol">
      <view class="text-{{volClr}}">
      <text class="cuIcon-like"></text>
      志愿活动
      </view>
    </view>
    <view class="action" bindtap="toMe">
      <view class="text-{{meClr}}">
        <text wx:if="{{userType === 'vol'}}" class="cuIcon-people"></text>
        <text wx:elif="{{userType === 'stf'}}" class="cuIcon-friend"></text>
        {{userType === 'vol' ? '个人' : '团队'}}中心
      </view>
    </view>
  </view>
</view>