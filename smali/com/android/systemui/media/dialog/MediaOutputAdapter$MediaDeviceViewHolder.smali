.class Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;
.source "MediaOutputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/dialog/MediaOutputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaDeviceViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/View;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBind$0(Landroid/view/View;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onEndItemClick()V

    return-void
.end method

.method private synthetic lambda$onBind$1(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method private synthetic lambda$onBind$2(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method private synthetic lambda$onBind$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$onBind$4(Landroid/view/View;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onEndItemClick()V

    return-void
.end method

.method private onEndItemClick()V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->launchMediaOutputGroupDialog()V

    return-void
.end method

.method private onItemClick(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->launchBluetoothPairing()V

    :cond_0
    return-void
.end method

.method private onItemClick(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isTransferring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-static {v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->access$100(Lcom/android/systemui/media/dialog/MediaOutputAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->playSwitchingAnim(Landroid/view/View;Landroid/view/View;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    const/4 p1, 0x1

    .line 211
    invoke-virtual {p2, p1}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBind$0$MediaOutputAdapter$MediaDeviceViewHolder(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->lambda$onBind$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBind$1$MediaOutputAdapter$MediaDeviceViewHolder(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->lambda$onBind$1(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBind$2$MediaOutputAdapter$MediaDeviceViewHolder(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->lambda$onBind$2(Lcom/android/settingslib/media/MediaDevice;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBind$3$MediaOutputAdapter$MediaDeviceViewHolder(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->lambda$onBind$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBind$4$MediaOutputAdapter$MediaDeviceViewHolder(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->lambda$onBind$4(Landroid/view/View;)V

    return-void
.end method

.method onBind(IZZ)V
    .locals 6

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->onBind(IZZ)V

    const/4 p2, 0x0

    const/16 p3, 0x8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->media_output_dialog_pairing_new:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;Z)V

    .line 180
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$drawable;->ic_add:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 181
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p3, p3, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {p3}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$hZV9-KRYF6TLZLjMhgK9jDA1yTw;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$hZV9-KRYF6TLZLjMhgK9jDA1yTw;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 186
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->access$102(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 187
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTransitionAlpha(F)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$BYuJJz7MLLt8HMylC2pqYKz8M2g;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$BYuJJz7MLLt8HMylC2pqYKz8M2g;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->getSpeakerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSessionName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->media_output_dialog_group:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSessionSeekbar()V

    :cond_2
    :goto_0
    return-void
.end method

.method onBind(Lcom/android/settingslib/media/MediaDevice;ZZ)V
    .locals 8

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->onBind(Lcom/android/settingslib/media/MediaDevice;ZZ)V

    .line 125
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-static {p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->access$000(Lcom/android/systemui/media/dialog/MediaOutputAdapter;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isCurrentlyConnected(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->access$102(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mBottomDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionAlpha(F)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$r6IKA_fU62fELJihXn4UtDjJVK0;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$r6IKA_fU62fELJihXn4UtDjJVK0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->isTransferring()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result p2

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p2, p2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 145
    invoke-virtual {p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    goto :goto_2

    .line 149
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->getItemTitle(Lcom/android/settingslib/media/MediaDevice;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 154
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    .line 157
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    sget p3, Lcom/android/systemui/R$string;->media_output_dialog_connect_failed:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$-H-yiguFeb7d-Eod1cc153_ONm0;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$-H-yiguFeb7d-Eod1cc153_ONm0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 159
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p3, p3, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p3}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    move-result p3

    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 160
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_2

    .line 164
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->getItemTitle(Lcom/android/settingslib/media/MediaDevice;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;Z)V

    .line 165
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$-ghV0p6Snc_3T5IAni-ZsXungG4;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputAdapter$MediaDeviceViewHolder$-ghV0p6Snc_3T5IAni-ZsXungG4;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
