.class final Lcom/android/systemui/media/CacheKey;
.super Ljava/lang/Object;
.source "MediaViewController.kt"


# instance fields
.field private expansion:F

.field private gutsVisible:Z

.field private heightMeasureSpec:I

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    iput p2, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    iput p3, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    iput-boolean p4, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 498
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/media/CacheKey;IIFZILjava/lang/Object;)Lcom/android/systemui/media/CacheKey;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/CacheKey;->copy(IIFZ)Lcom/android/systemui/media/CacheKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IIFZ)Lcom/android/systemui/media/CacheKey;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/android/systemui/media/CacheKey;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/media/CacheKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/CacheKey;

    iget v0, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    iget v1, p1, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    iget v1, p1, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    iget v1, p1, Lcom/android/systemui/media/CacheKey;->expansion:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setExpansion(F)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    return-void
.end method

.method public final setGutsVisible(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    return-void
.end method

.method public final setHeightMeasureSpec(I)V
    .locals 0

    .line 496
    iput p1, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    return-void
.end method

.method public final setWidthMeasureSpec(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheKey(widthMeasureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightMeasureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/CacheKey;->expansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gutsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
