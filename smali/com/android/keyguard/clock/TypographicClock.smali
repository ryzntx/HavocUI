.class public Lcom/android/keyguard/clock/TypographicClock;
.super Landroid/widget/TextView;
.source "TypographicClock.java"


# instance fields
.field private mAccentColor:I

.field private mDescFormat:Ljava/lang/String;

.field private final mHours:[Ljava/lang/String;

.field private final mMinutes:[Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/TypographicClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/TypographicClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    .line 61
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/clock/TypographicClock;->mDescFormat:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mResources:Landroid/content/res/Resources;

    .line 63
    sget p2, Lcom/android/systemui/R$array;->type_clock_hours:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mHours:[Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$array;->type_clock_minutes:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mMinutes:[Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$color;->typeClockAccentColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mAccentColor:I

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/keyguard/clock/TypographicClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TypographicClock;->onTimeChanged()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/clock/TypographicClock;->mDescFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    rem-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    .line 78
    iget-object v2, p0, Lcom/android/keyguard/clock/TypographicClock;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$plurals;->type_clock_header:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/SpannedString;

    .line 82
    invoke-virtual {v2}, Landroid/text/SpannedString;->length()I

    move-result v3

    const-class v4, Landroid/text/Annotation;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    .line 84
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v2, v5

    .line 85
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 86
    aget-object v6, v3, v2

    .line 87
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "color"

    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/keyguard/clock/TypographicClock;->mAccentColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 90
    invoke-virtual {v4, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v4, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v9, 0x21

    .line 89
    invoke-virtual {v4, v7, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/clock/TypographicClock;->mHours:[Ljava/lang/String;

    aget-object v0, v3, v0

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/android/keyguard/clock/TypographicClock;->mMinutes:[Ljava/lang/String;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mTimeZone:Ljava/util/TimeZone;

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/clock/TypographicClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setClockColor(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/android/keyguard/clock/TypographicClock;->mAccentColor:I

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TypographicClock;->onTimeChanged()V

    return-void
.end method
