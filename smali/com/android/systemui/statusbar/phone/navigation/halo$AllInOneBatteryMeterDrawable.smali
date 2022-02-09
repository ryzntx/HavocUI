.class public Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/navigation/halo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x24
    name = "AllInOneBatteryMeterDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;
    }
.end annotation


# static fields
.field private static final SHOW_100_PERCENT:Z

.field private static final SINGLE_DIGIT_PERCENT:Z


# instance fields
.field private mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mBoltDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisposed:Z

.field private mFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitialized:Z

.field private mIsAnimating:Z

.field private mLevelDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

.field private mMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field private mTextAndBoltPaint:Landroid/graphics/Paint;

.field private mTextGravity:I

.field private mTextX:F

.field private mTextY:F

.field private mWarningTextPaint:Landroid/graphics/Paint;

.field private final this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/navigation/halo;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V
    .locals 6

    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->loadBatteryDrawables(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mDisposed:Z

    new-array v0, v3, [I

    const v1, 0x10100af

    aput v1, v0, v4

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getBatteryDrawableStyleResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getBatteryDrawableStyleResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "mTextGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getPaintAlignmentFromGravity(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getPaintAlignmentFromGravity(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    :cond_0
    iput v5, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    goto :goto_0
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;)Lcom/android/systemui/statusbar/phone/navigation/halo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    return-object v0
.end method

.method private checkBatteryMeterDrawableValid(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getBatteryDrawableResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I

    move-result v0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected a LayerDrawable but received a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " is an "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "invalid drawable"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a058b    # type="id" name="battery_frame"

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0a058c    # type="id" name="battery_fill"

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0a058d    # type="id" name="battery_charge_indicator"

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v1, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    const-string v1, "Missing battery_frame drawble"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    const-string v1, "Missing battery_charge_indicator drawable"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v2, :cond_4

    instance-of v0, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Expected a AnimatedVectorDrawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "but received a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    invoke-direct {v0, v2}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;->setCurrentFraction(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to perform stop motion on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "battery_fill drawable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;

    const-string v1, "Missing battery_fill drawable"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;Ljava/lang/String;)V

    throw v0
.end method

.method private createBoltBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getPaddingLeft()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawBattery(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->status:I

    if-eq v2, v0, :cond_0

    move v0, v1

    :cond_0
    iget v2, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    if-nez v0, :cond_1

    iget v3, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    const/16 v2, 0x64

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mLevelDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    int-to-float v4, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;->setCurrentFraction(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mLevelDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000015(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;->setTint(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a058d    # type="id" name="battery_charge_indicator"

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xff

    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060143    # type="color" name="qs_batterymeter_frame_color"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "?"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->drawPercentageText(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V

    goto :goto_0
.end method

.method private drawPercentageText(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;",
            ")V"
        }
    .end annotation

    iget v0, p2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000004(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/navigation/halo;->mShowPercent:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000004(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000003(Lcom/android/systemui/statusbar/phone/navigation/halo;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000015(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBatteryDrawableResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_0

    const v0, 0x7f0806db    # type="drawable" name="ic_smart_battery_landscape"

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_1

    const v0, 0x7f0806d2    # type="drawable" name="ic_smart_battery_circle"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_2

    const v0, 0x7f0806e0    # type="drawable" name="ic_smart_battery_portrait"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_3

    const v0, 0x7f0806d7    # type="drawable" name="ic_smart_battery_fayah"

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getBatteryDrawableStyleResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_0

    const v0, 0x7f1202d8    # type="style" name="BatteryMeterViewDrawable.Landscape"

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_1

    const v0, 0x7f1202d9    # type="style" name="BatteryMeterViewDrawable.Circle"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_2

    const v0, 0x7f1202d7    # type="style" name="BatteryMeterViewDrawable.Portrait"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_3

    const v0, 0x7f1202da    # type="style" name="BatteryMeterViewDrawable.Fayah"

    goto :goto_0

    :cond_3
    const v0, 0x7f1202d6    # type="style" name="BatteryMeterViewDrawable"

    goto :goto_0
.end method

.method private getPaintAlignmentFromGravity(I)Landroid/graphics/Paint$Align;
    .locals 4

    const v3, 0x800005

    const v2, 0x800003

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->isLayoutRtl()Z

    move-result v0

    and-int v1, p1, v2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    and-int v1, p1, v3

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method private init()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v9, 0x800005

    const v8, 0x800003

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getPaddingLeft()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v5

    invoke-direct {v3, v2, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextAndBoltPaint:Landroid/graphics/Paint;

    const-string v5, "99"

    const-string v6, "99"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/navigation/halo;->isLayoutRtl()Z

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_3

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    :cond_2
    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x30

    if-ne v0, v2, :cond_8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBoltDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->updateBoltDrawableLayer(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mInitialized:Z

    goto/16 :goto_0

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_5

    if-eqz v4, :cond_4

    :goto_3
    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/lit8 v0, v0, 0x5

    const/4 v4, 0x5

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    goto :goto_1

    :cond_7
    int-to-float v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextX:F

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextGravity:I

    and-int/lit8 v0, v0, 0x50

    const/16 v2, 0x50

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mTextY:F

    goto :goto_2
.end method

.method private isThemeApplied()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/content/res/ThemeConfig;->SYSTEM_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadBatteryDrawables(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->isThemeApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->checkBatteryMeterDrawableValid(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable$BatteryMeterDrawableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->getBatteryDrawableResourceForMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a058b    # type="id" name="battery_frame"

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mFrameDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a058c    # type="id" name="battery_fill"

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    invoke-direct {v1, v0}, Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mLevelDrawable:Lorg/cyanogenmod/graphics/drawable/StopMotionVectorDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a058d    # type="id" name="battery_charge_indicator"

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBoltDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo;->TAG:Ljava/lang/String;

    const-string v2, "Invalid themed battery meter drawable, falling back to system"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "system"

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getThemedResourcesForApplication(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateBoltDrawableLayer(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/LayerDrawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const v1, 0x7f0a058d    # type="id" name="battery_charge_indicator"

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->createBoltBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public onDispose()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mDisposed:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mDisposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mInitialized:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->init()V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->drawBattery(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000005(Lcom/android/systemui/statusbar/phone/navigation/halo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->init()V

    return-void
.end method

.method public setDarkIntensity(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$S1000015(Lcom/android/systemui/statusbar/phone/navigation/halo;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBoltDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBatteryDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->mBoltDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->updateBoltDrawableLayer(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->invalidate()V

    return-void
.end method
