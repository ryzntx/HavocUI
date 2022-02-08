.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$IdbuCeb6qfetPrtMcPy_30LlaGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ThresholdSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$IdbuCeb6qfetPrtMcPy_30LlaGo;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$IdbuCeb6qfetPrtMcPy_30LlaGo;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    return-void
.end method
