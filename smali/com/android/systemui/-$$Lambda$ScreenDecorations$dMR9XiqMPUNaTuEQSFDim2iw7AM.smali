.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$dMR9XiqMPUNaTuEQSFDim2iw7AM;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/ScreenDecorations;->lambda$onTuningChanged$3$ScreenDecorations(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
