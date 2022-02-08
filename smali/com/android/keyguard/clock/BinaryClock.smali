.class public Lcom/android/keyguard/clock/BinaryClock;
.super Landroid/view/View;
.source "BinaryClock.java"


# instance fields
.field private mAmbienEmptyDotPaint:Landroid/graphics/Paint;

.field private mAmbientDotPaint:Landroid/graphics/Paint;

.field private final mCalendar:Ljava/util/Calendar;

.field private mDescFormat:Ljava/lang/String;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotSize:I

.field private mDots:[[I

.field private mEmptyDotPaint:Landroid/graphics/Paint;

.field private mHour:I

.field private mIsAmbientDisplay:Z

.field private mMinutes:I

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/BinaryClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/BinaryClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 49
    fill-array-data p2, :array_0

    const-class p3, I

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    iput-object p2, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 66
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    const v1, 0x106000b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbientDotPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbientDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbientDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbienEmptyDotPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbienEmptyDotPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p3, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbienEmptyDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/BinaryClock;->mDescFormat:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BinaryClock;->onDensityOrFontScaleChanged()V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method private calculateDotMatrix()V
    .locals 12

    .line 138
    iget v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mHour:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 139
    :goto_0
    iget v3, p0, Lcom/android/keyguard/clock/BinaryClock;->mHour:I

    mul-int/lit8 v4, v0, 0xa

    sub-int/2addr v3, v4

    .line 140
    iget v4, p0, Lcom/android/keyguard/clock/BinaryClock;->mMinutes:I

    if-lt v4, v1, :cond_1

    div-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 141
    :goto_1
    iget v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mMinutes:I

    mul-int/lit8 v5, v4, 0xa

    sub-int/2addr v1, v5

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 143
    fill-array-data v6, :array_0

    const-class v7, I

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    iput-object v6, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    const/16 v6, 0x31

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    move v8, v2

    .line 146
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 147
    iget-object v9, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    aget-object v9, v9, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    sub-int/2addr v10, v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_2

    move v11, v7

    goto :goto_3

    :cond_2
    move v11, v2

    :goto_3
    aput v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    move v3, v2

    .line 152
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 153
    iget-object v8, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    aget-object v8, v8, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_4

    move v10, v7

    goto :goto_5

    :cond_4
    move v10, v2

    :goto_5
    aput v10, v8, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    move v3, v2

    .line 158
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_6

    move v9, v7

    goto :goto_7

    :cond_6
    move v9, v2

    :goto_7
    aput v9, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    if-eqz v1, :cond_9

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 164
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    sub-int/2addr v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v7

    goto :goto_9

    :cond_8
    move v5, v2

    :goto_9
    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BinaryClock;->onTimeChanged()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    sget v1, Lcom/android/systemui/R$dimen;->binary_clock_dot_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotSize:I

    .line 94
    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$dimen;->binary_clock_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$dimen;->binary_clock_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbientDotPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$dimen;->binary_clock_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbienEmptyDotPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/R$dimen;->binary_clock_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x4

    .line 112
    div-int/2addr v0, v1

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 114
    div-int/2addr v2, v1

    .line 116
    div-int/lit8 v3, v2, 0x2

    const/4 v4, 0x3

    :goto_0
    if-ltz v4, :cond_5

    .line 119
    div-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_0

    if-nez v6, :cond_0

    :goto_2
    add-int/2addr v5, v0

    goto :goto_5

    .line 125
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/clock/BinaryClock;->mDots:[[I

    aget-object v7, v7, v6

    aget v7, v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    int-to-float v7, v5

    int-to-float v8, v3

    .line 126
    iget v9, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotSize:I

    int-to-float v9, v9

    iget-boolean v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mIsAmbientDisplay:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbientDotPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    int-to-float v7, v5

    int-to-float v8, v3

    .line 128
    iget v9, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotSize:I

    int-to-float v9, v9

    iget-boolean v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mIsAmbientDisplay:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mAmbienEmptyDotPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_3
    iget-object v10, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v3, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onTimeChanged()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mHour:I

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mMinutes:I

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mDescFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    invoke-direct {p0}, Lcom/android/keyguard/clock/BinaryClock;->calculateDotMatrix()V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/keyguard/clock/BinaryClock;->mTimeZone:Ljava/util/TimeZone;

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDark(Z)V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mIsAmbientDisplay:Z

    if-eq v0, p1, :cond_0

    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/clock/BinaryClock;->mIsAmbientDisplay:Z

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClock;->mEmptyDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
