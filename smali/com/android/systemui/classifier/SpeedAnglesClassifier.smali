.class public Lcom/android/systemui/classifier/SpeedAnglesClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;
    }
.end annotation


# static fields
.field public static final VERBOSE:Z


# instance fields
.field private mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/classifier/Stroke;",
            "Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const-string v1, "debug.falsing_log.spd_ang"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->getAnglesVariance()F

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/classifier/SpeedVarianceEvaluator;->evaluate(F)F

    move-result p1

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->getAnglesPercentage()F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/classifier/SpeedAnglesPercentageEvaluator;->evaluate(F)F

    move-result p0

    add-float/2addr p1, p0

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SPD_ANG"

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 63
    iget-object v2, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;

    invoke-direct {v4}, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;

    .line 72
    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    .line 71
    invoke-virtual {v4, v2}, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->addPoint(Lcom/android/systemui/classifier/Point;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
