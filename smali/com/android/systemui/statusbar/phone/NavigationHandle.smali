.class public Lcom/android/systemui/statusbar/phone/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;
    }
.end annotation


# static fields
.field static sama:Z


# instance fields
.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

.field public mNavigationEnabled:Z

.field public ena:Z

.field private mCurrentColor:I

.field public mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

.field public mOverrideIconColor:I

.field public mContext:Landroid/content/Context;

.field private final mBottom:I

.field private mBurnInProtectionTimer:Ljava/util/Timer;

.field private mBurnInYOffset:I

.field private mCurrentColor:I

.field private final mDarkColor:I

.field private mDarkIntensity:F

.field private final mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mRequiresInvalidate:Z


# direct methods
.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateCustomWidth()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 1

    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    return v0
.end method

.method private updateCustomWidth()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->getCustomWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->sama:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 75
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 76
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 78
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    .line 79
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->observe()V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateGesture()V

    # .line 59
    # new-instance v0, Landroid/os/Handler;

    # invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    # iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    # const/4 v1, 0x1

    # const/4 v3, 0x0

    # new-array v1, v1, [Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    # .line 60
    # new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;

    # invoke-direct {v2, p0, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;)V

    # aput-object v2, v1, v3

    # invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->barbek()V

    return-void
.end method

.method private barbek()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Lcom/android/systemui/statusbar/phone/NavigationHandle;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "DYNAMIC_NAVIGATION_BAR_STATE"

    const/4 v4, -0x2

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->ena:Z

    .line 163
    new-array v0, v2, [Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;)V

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V

    return-void

    :cond_2
    move v0, v2

    .line 160
    goto :goto_0
.end method

.method private changeColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mCurrentColor:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    return p1
.end method


# virtual methods
.method public apdetNavigationHandle(I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public defaultBottom()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    const-string v1, "navigation_handle_bottom"

    invoke-static {v1}, Lcom/znxt/systemui/ResourceUtils;->getDimenResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    return v0
.end method

.method public defaultRadius()I
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    const-string v1, "navigation_handle_radius"

    invoke-static {v1}, Lcom/znxt/systemui/ResourceUtils;->getDimenResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 145
    return v0
.end method

.method public defaultWidth()I
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 178
    const-string v1, "navigation_home_handle_width"

    invoke-static {v1}, Lcom/znxt/systemui/ResourceUtils;->getDimenResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 179
    return v0
.end method

.method public getCustomWidth()I
    .locals 4

    .line 194
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    const-string v1, "NAVIGATION_HANDLE_WIDTH"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->defaultWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 196
    return v0
.end method

.method public observe()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "DYNAMIC_NAVIGATION_BAR_STATE"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mNavigationEnabled:Z

    .line 135
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    const-string v3, "NAVIGATION_HANDLE_WIDTH"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    const-string v3, "NAVIGATION_HANDLE_HEIGHT"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    const-string v3, "GESTURE_LINE_BOTTOM_SIZE"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    new-array v0, v2, [Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V

    return-void

    :cond_2
    move v0, v2

    .line 134
    goto :goto_0
.end method

.method public updateGesture()V
    .locals 4

    const/4 v3, -0x2

    .line 159
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string v1, "GESTURE_LINE_BOTTOM_SIZE"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->defaultBottom()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    .line 161
    const-string v1, "NAVIGATION_HANDLE_HEIGHT"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->defaultRadius()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 167
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateCustomWidth()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateCustomWidth()V

    return-void
.end method

.method public apdet(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationHandle$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public apdetNavigationHandle()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$Dsb_Tint$0$;

    const/16 v2, 0x3c

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Dsb_Tint$0$;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public lambda$setTintDsb$setDynamicColor_NavigationHandle$0()V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 137
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    .line 138
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Lcom/android/systemui/statusbar/phone/NavigationHandle$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 139
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    .line 146
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 101
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    add-int/2addr v0, v3

    int-to-float v5, v0

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 102
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 87
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->changeColor(I)V

    :cond_0
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
