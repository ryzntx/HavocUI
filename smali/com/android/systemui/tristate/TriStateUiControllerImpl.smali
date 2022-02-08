.class public Lcom/android/systemui/tristate/TriStateUiControllerImpl;
.super Ljava/lang/Object;
.source "TriStateUiControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "TriStateUiControllerImpl"


# instance fields
.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogPosition:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

.field private mIconColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mScreenOn:Z

.field private mTextColor:I

.field private mTriStateIcon:Landroid/widget/ImageView;

.field private mTriStateMode:I

.field private mTriStateText:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationType:I

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mScreenOn:Z

    .line 85
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mBackgroundColor:I

    .line 87
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIconColor:I

    .line 88
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTextColor:I

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    .line 96
    new-instance v0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;-><init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    .line 140
    new-instance p1, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    invoke-direct {p1, p0, p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;-><init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    .line 141
    new-instance p1, Lcom/android/systemui/tristate/TriStateUiControllerImpl$2;

    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/tristate/TriStateUiControllerImpl$2;-><init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 147
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateRingerModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleDismiss()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->checkOrientationType()V

    return-void
.end method

.method private checkOrientationType()V
    .locals 2

    .line 155
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 158
    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationType:I

    if-eq v0, v1, :cond_0

    .line 159
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationType:I

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTriStateLayout()V

    :cond_0
    return-void
.end method

.method private handleDismiss()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->registerOrientationListener(Z)V

    .line 394
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleResetTimeout()V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTheme()V

    .line 377
    invoke-direct {p0, v1}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->registerOrientationListener(Z)V

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->checkOrientationType()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mListener:Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;

    if-eqz p0, :cond_0

    .line 381
    invoke-interface {p0}, Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;->onTriStateUserActivity()V

    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 400
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 401
    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    if-eq v0, v1, :cond_0

    .line 402
    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTriStateLayout()V

    .line 404
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mListener:Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;

    if-eqz p0, :cond_0

    .line 405
    invoke-interface {p0}, Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;->onTriStateUserActivity()V

    :cond_0
    return-void
.end method

.method private initDialog()V
    .locals 3

    .line 179
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 192
    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 193
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 194
    const-class v1, Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$layout;->tri_state_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->tri_state_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->tri_state_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateIcon:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->tri_state_text:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateText:Landroid/widget/TextView;

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTheme()V

    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 212
    sget-object p1, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Can detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    .line 216
    :cond_0
    sget-object p1, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Cannot detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method private updateRingerModeChanged()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 366
    iget v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->show()V

    :cond_0
    return-void
.end method

.method private updateTheme()V
    .locals 2

    const v0, 0x1010435

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->getAttrColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIconColor:I

    const v0, 0x1010036

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->getAttrColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTextColor:I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mBackgroundColor:I

    .line 435
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateText:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateTriStateLayout()V
    .locals 15

    .line 221
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 228
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 229
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 230
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 231
    iget v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_0

    move v1, v4

    move v7, v1

    goto :goto_0

    .line 241
    :cond_0
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    .line 242
    sget v7, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    goto :goto_0

    .line 237
    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    .line 238
    sget v7, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    goto :goto_0

    .line 233
    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    .line 234
    sget v7, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    :goto_0
    const v8, 0x10e0011

    .line 245
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    .line 252
    :goto_1
    iget v8, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mOrientationType:I

    const/16 v9, 0x33

    const/16 v10, 0x53

    const v11, 0x105025d

    if-eq v8, v6, :cond_14

    const/16 v12, 0x55

    const/16 v13, 0x35

    if-eq v8, v5, :cond_9

    const/4 v2, 0x3

    if-eq v8, v2, :cond_e

    if-eqz v4, :cond_4

    move v9, v13

    .line 318
    :cond_4
    sget v2, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_deep:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 319
    iget v3, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    if-eqz v3, :cond_7

    if-eq v3, v6, :cond_6

    if-ne v3, v5, :cond_6

    .line 322
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_down_dialog_position:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v4, :cond_5

    .line 323
    sget v4, Lcom/android/systemui/R$drawable;->right_dialog_tri_state_down_bg:I

    goto :goto_2

    :cond_5
    sget v4, Lcom/android/systemui/R$drawable;->left_dialog_tri_state_down_bg:I

    goto :goto_2

    .line 327
    :cond_6
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_middle_dialog_position:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 328
    sget v4, Lcom/android/systemui/R$drawable;->dialog_tri_state_middle_bg:I

    :goto_2
    move v14, v3

    move v3, v2

    move v2, v14

    goto/16 :goto_9

    .line 331
    :cond_7
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v4, :cond_8

    .line 332
    sget v4, Lcom/android/systemui/R$drawable;->right_dialog_tri_state_up_bg:I

    goto :goto_2

    :cond_8
    sget v4, Lcom/android/systemui/R$drawable;->left_dialog_tri_state_up_bg:I

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    move v10, v12

    .line 278
    :goto_3
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_deep:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 279
    iget v8, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    if-eqz v8, :cond_d

    if-eq v8, v6, :cond_c

    if-ne v8, v5, :cond_b

    .line 282
    sget v4, Lcom/android/systemui/R$dimen;->tri_state_down_dialog_position:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 284
    :cond_b
    sget v4, Lcom/android/systemui/R$drawable;->dialog_tri_state_middle_bg:I

    move v9, v10

    goto/16 :goto_9

    .line 287
    :cond_c
    sget v2, Lcom/android/systemui/R$dimen;->tri_state_middle_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto :goto_4

    .line 289
    :cond_d
    sget v2, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_e
    :goto_4
    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    move v12, v13

    .line 299
    :goto_5
    sget v2, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_deep_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v4, :cond_10

    .line 301
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 303
    :cond_10
    iget v4, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    if-nez v4, :cond_11

    .line 304
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_6

    :cond_11
    if-ne v4, v6, :cond_12

    .line 306
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_middle_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_6

    :cond_12
    if-ne v4, v5, :cond_13

    .line 308
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_down_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 310
    :cond_13
    :goto_6
    sget v4, Lcom/android/systemui/R$drawable;->dialog_tri_state_middle_bg:I

    move v9, v12

    goto :goto_9

    :cond_14
    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    move v9, v10

    .line 259
    :goto_7
    sget v2, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_deep_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v4, :cond_16

    .line 261
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 263
    :cond_16
    iget v4, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    if-nez v4, :cond_17

    .line 264
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_up_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_8

    :cond_17
    if-ne v4, v6, :cond_18

    .line 266
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_middle_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_8

    :cond_18
    if-ne v4, v5, :cond_19

    .line 268
    sget v3, Lcom/android/systemui/R$dimen;->tri_state_down_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 270
    :cond_19
    :goto_8
    sget v4, Lcom/android/systemui/R$drawable;->dialog_tri_state_middle_bg:I

    .line 335
    :goto_9
    iget v5, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1e

    .line 336
    iget-object v5, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_1a

    .line 337
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateText:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 340
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 341
    iget-object v5, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1b

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 344
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_1b
    iget-object v5, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mTriStateText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    .line 350
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_1d
    iput v2, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mDialogPosition:I

    .line 354
    :cond_1e
    sget v1, Lcom/android/systemui/R$dimen;->tri_state_dialog_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sub-int/2addr v2, v0

    .line 356
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v0

    .line 357
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 358
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleResetTimeout()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 174
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getAttrColor(I)I
    .locals 2

    .line 441
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 442
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 443
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public handleResetTimeout()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 413
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mListener:Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;

    if-eqz p0, :cond_0

    .line 414
    invoke-interface {p0}, Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;->onTriStateUserActivity()V

    :cond_0
    return-void
.end method

.method public init(ILcom/android/systemui/tristate/TriStateUiController$UserActivityListener;)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mWindowType:I

    .line 167
    iget-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 168
    iput-object p2, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mListener:Lcom/android/systemui/tristate/TriStateUiController$UserActivityListener;

    .line 169
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->initDialog()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTheme()V

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTriStateLayout()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleDismiss()V

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->initDialog()V

    .line 422
    invoke-direct {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->updateTriStateLayout()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->mHandler:Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
