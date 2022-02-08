.class public Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2c
    name = "BarBackgroundDrawable"
.end annotation


# instance fields
.field private kontek:Landroid/content/Context;

.field private mColorOverride:Ljava/lang/Integer;

.field private mCurrentColor:I

.field private mCurrentGradientAlpha:I

.field private mCurrentMode:I

.field private mFrame:Landroid/graphics/Rect;

.field private mGradient:Landroid/graphics/drawable/Drawable;

.field private mGradientResourceId:I

.field private final mHandler:Landroid/os/Handler;

.field private mOpaque:I

.field private final mOpaqueColorResourceId:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSemiTransparent:I

.field private final mSemiTransparentColorResourceId:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTransparent:I

.field private final mTransparentColorResourceId:I

.field private mWarning:I

.field private final mWarningColorResourceId:I

.field private res:Landroid/content/res/Resources;

.field private targetColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2

    .line 173
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentMode:I

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    .line 151
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    .line 154
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    .line 158
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    .line 160
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->res:Landroid/content/res/Resources;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->kontek:Landroid/content/Context;

    .line 177
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mHandler:Landroid/os/Handler;

    .line 178
    iput p3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaqueColorResourceId:I

    .line 179
    iput p4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparentColorResourceId:I

    .line 180
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientResourceId:I

    .line 181
    iput p5, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparentColorResourceId:I

    .line 182
    iput p6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarningColorResourceId:I

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method private final getTargetColor()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetColor(I)I

    move-result p0

    return p0
.end method

.method private final getTargetColor(I)I
    .locals 1

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorOpaque()I

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorSemiTransparent()I

    move-result v0

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorSemiTransparent()I

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorTransparent()I

    move-result v0

    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorOpaque()I

    move-result v0

    goto :goto_0

    .line 124
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorTransparent()I

    move-result v0

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final getTargetGradientAlpha()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetGradientAlpha(I)I

    move-result p0

    return p0
.end method

.method private final getTargetGradientAlpha(I)I
    .locals 1

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getGradientAlphaOpaque()I

    move-result v0

    :goto_0
    return v0

    .line 133
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getGradientAlphaSemiTransparent()I

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_2
    const/16 v0, 0xff

    goto :goto_0

    .line 137
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isena()Z
    .locals 0

    .line 304
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public Oval()Z
    .locals 0

    .line 308
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    return p0
.end method

.method public final declared-synchronized applyMode(IZ)V
    .locals 1

    monitor-enter p0

    .line 393
    :try_start_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentMode:I

    .line 395
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;-><init>(Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    move v3, v6

    .line 199
    move v6, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/4 v7, 0x0

    if-le v6, v7, :cond_0

    .line 200
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    .line 202
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorOverride:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 204
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorOverride:Ljava/lang/Integer;

    iput-object v7, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->targetColor:Ljava/lang/Integer;

    .line 210
    :cond_0
    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    move v4, v6

    .line 211
    move v6, v4

    const/4 v7, 0x0

    if-le v6, v7, :cond_1

    .line 212
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 213
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 206
    :cond_2
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final finishAnimating()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$Dsb_Tint$0$;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Dsb_Tint$0$;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final generateAnimator()V
    .locals 1

    .line 421
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->generateAnimator(I)V

    return-void
.end method

.method protected final generateAnimator(I)V
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->ishome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->isMusic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->ls()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorTransparent()I

    move-result v0

    .line 155
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetGradientAlpha(I)I

    move-result v1

    .line 156
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    if-eq v1, v2, :cond_2

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$TuRojML5wkskluGQkLhb0fikgG4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$TuRojML5wkskluGQkLhb0fikgG4;-><init>(Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 154
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetColor(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getColorOpaque()I
    .locals 0

    .line 276
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    return p0
.end method

.method protected getColorSemiTransparent()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    return p0
.end method

.method protected getColorTransparent()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    return p0
.end method

.method protected getColorwarning()I
    .locals 0

    .line 280
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    return p0
.end method

.method protected getGradientAlphaOpaque()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getGradientAlphaSemiTransparent()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isMusic()Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.music"

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public ishome()Z
    .locals 2

    .line 80
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 6

    const/4 v1, 0x0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 73
    :cond_0
    return-object v2

    .line 63
    :cond_1
    const/high16 v3, -0x80000000

    move-object v0, v1

    .line 64
    check-cast v0, Landroid/content/ComponentName;

    .line 65
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    .line 70
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 66
    iget v5, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v3, :cond_3

    .line 67
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 68
    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move v3, v0

    goto :goto_0

    .line 69
    :cond_3
    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v3, :cond_2

    move-object v0, v1

    .line 70
    check-cast v0, Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_0
.end method

.method public synthetic lambda$applyMode$0$BarTransitions$BarBackgroundDrawable(I)V
    .locals 2

    .line 397
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetColor(I)I

    move-result v0

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetGradientAlpha(I)I

    move-result p1

    .line 399
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    if-eq p1, v1, :cond_1

    .line 400
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentColor(I)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentGradientAlpha(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$finishAnimation$1$BarTransitions$BarBackgroundDrawable()V
    .locals 3

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetColor()I

    move-result v0

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetGradientAlpha()I

    move-result v1

    .line 412
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    if-eq v1, v2, :cond_1

    .line 413
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentColor(I)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentGradientAlpha(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$generateAnimator$2$BarTransitions$BarBackgroundDrawable(II)V
    .locals 1

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    if-ne p1, v0, :cond_0

    .line 430
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentGradientAlpha(I)V

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    if-ne p2, v0, :cond_1

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentColor(I)V

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentColor(I)V

    .line 436
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentGradientAlpha(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public ls()Z
    .locals 0

    .line 312
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowingDsb:Z

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColorOverride(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorOverride:Ljava/lang/Integer;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorOverride:Ljava/lang/Integer;

    .line 225
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method protected final setCurrentColor(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentColor:I

    return-void
.end method

.method protected final setCurrentGradientAlpha(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mCurrentGradientAlpha:I

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public setGradientResourceId(Landroid/content/res/Resources;I)V
    .locals 0

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    .line 209
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientResourceId:I

    return-void
.end method

.method public setTint(I)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public final declared-synchronized updateResources(Landroid/content/res/Resources;)V
    .locals 3

    monitor-enter p0

    .line 245
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaqueColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparentColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    .line 247
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaqueColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    .line 248
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparentColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    .line 249
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparentColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    .line 250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarningColorResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 256
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientResourceId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->kontek:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentColor(I)V

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getTargetGradientAlpha()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->setCurrentGradientAlpha(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
