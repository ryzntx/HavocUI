.class Lcom/android/systemui/navigation/pulse/FFTAverage;
.super Ljava/lang/Object;
.source "FFTAverage.java"


# instance fields
.field private average:F

.field private final window:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->window:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method average(I)I
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->window:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->window:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 33
    iget v1, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->average:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->average:F

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 36
    iget v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->average:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->average:F

    .line 37
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->window:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    .line 39
    iget p0, p0, Lcom/android/systemui/navigation/pulse/FFTAverage;->average:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
