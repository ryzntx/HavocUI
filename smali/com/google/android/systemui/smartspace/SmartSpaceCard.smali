.class public Lcom/google/android/systemui/smartspace/SmartSpaceCard;
.super Ljava/lang/Object;
.source "SmartSpaceCard.java"


# static fields
.field private static sRequestCode:I


# instance fields
.field private final mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconProcessed:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mPublishTime:J

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 31
    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIntent:Landroid/content/Intent;

    .line 32
    iput-object p5, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    .line 33
    iput-wide p7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    .line 34
    sget p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    add-int/lit8 p1, p1, 0x1

    .line 35
    sput p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    const p2, 0x7ffffffe

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 37
    sput p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    .line 39
    :cond_0
    sget p1, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->sRequestCode:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    return-void
.end method

.method static fromWrapper(Landroid/content/Context;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 273
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->intent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v0

    .line 274
    :goto_1
    iget-object v1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 275
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 277
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x1

    invoke-static {v1, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v6, v1

    .line 279
    new-instance v10, Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean v7, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    iget-wide v8, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    move-object v1, v10

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;-><init>(Landroid/content/Context;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception p0

    const-string p1, "SmartspaceCard"

    const-string p2, "from proto"

    .line 282
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getDurationText(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;
    .locals 7

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMinutesToEvent(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I

    move-result p1

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    .line 217
    div-int/lit8 v3, p1, 0x3c

    .line 218
    rem-int/2addr p1, v0

    .line 219
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->smartspace_hours:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-gtz p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$plurals;->smartspace_minutes:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->smartspace_hours_mins:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$plurals;->smartspace_minutes:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFormattedText(Z)Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMessage()Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    :goto_0
    return-object p0
.end method

.method private getMessage()Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 7

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 133
    iget-wide v3, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 134
    iget-wide v5, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v5, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 136
    iget-object v2, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->preEvent:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->postEvent:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz v0, :cond_1

    return-object v0

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinutesToEvent(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I
    .locals 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMillisToEvent(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getTextArgs([Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 192
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 194
    aget-object v3, p1, v2

    iget v3, v3, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, ""

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    .line 200
    aput-object v4, v1, v2

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_3

    .line 201
    aget-object v3, p1, v2

    iget v3, v3, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->truncateLocation:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 207
    :cond_2
    aput-object p2, v1, v2

    goto :goto_3

    .line 202
    :cond_3
    :goto_1
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 203
    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    .line 205
    :cond_4
    aput-object v4, v1, v2

    goto :goto_3

    .line 196
    :cond_5
    :goto_2
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getDurationText(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private hasParams(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 164
    iget-object p0, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    if-eqz p0, :cond_0

    .line 165
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private substitute(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedText(Z)Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->hasParams(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTextArgs([Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 245
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz p0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->expiryCriteria:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    if-eqz p0, :cond_0

    .line 249
    iget-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->expirationTimeMillis:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFormattedTitle()Ljava/lang/CharSequence;
    .locals 13

    .line 76
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getMessage()Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    iget-object v2, v0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v2, :cond_a

    .line 83
    iget-object v3, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->text:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 85
    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->hasParams(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    .line 92
    :goto_0
    iget-object v8, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->formatParam:[Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    .line 93
    array-length v9, v8

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lt v7, v9, :cond_6

    .line 107
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget v2, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardType:I

    if-ne v2, v10, :cond_2

    array-length v2, v8

    if-ne v2, v11, :cond_2

    .line 108
    aget-object v2, v8, v5

    iget-object v6, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    .line 109
    aget-object v2, v8, v12

    iget-object v4, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    :cond_2
    if-nez v4, :cond_3

    return-object v1

    :cond_3
    if-nez v6, :cond_5

    .line 115
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->duringEvent:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    if-eq v0, v1, :cond_4

    return-object v3

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->smartspace_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->smartspace_pill_text_format:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v6, v1, v5

    aput-object v4, v1, v12

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_6
    aget-object v8, v8, v7

    if-eqz v8, :cond_9

    .line 98
    iget v9, v8, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    if-eq v9, v12, :cond_8

    if-ne v9, v11, :cond_7

    goto :goto_1

    :cond_7
    if-ne v9, v10, :cond_9

    .line 102
    iget-object v4, v8, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->text:Ljava/lang/String;

    goto :goto_2

    .line 100
    :cond_8
    :goto_1
    invoke-direct {p0, v8}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getDurationText(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    return-object v1
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMillisToEvent(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J
    .locals 2

    .line 174
    iget p1, p1, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->formatParamArgs:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 176
    iget-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    iget-wide p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventDurationMillis:J

    add-long/2addr v0, p0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-wide v0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->eventTimeMillis:J

    .line 180
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 292
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v2, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->tapAction:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    iget v2, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->actionType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/high16 v1, 0x10000000

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    invoke-static {v1, p0, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    return-object v1

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mRequestCode:I

    invoke-static {v1, p0, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->substitute(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExpired()Z
    .locals 4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconProcessed()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    return p0
.end method

.method public isSensitive()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->isSensitive:Z

    return p0
.end method

.method public isWorkProfile()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mCard:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->isWorkProfile:Z

    return p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconProcessed(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mIconProcessed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subtitle:"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expires:"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published:"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-wide v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->mPublishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
