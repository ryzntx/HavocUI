.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$5NXlrxrIm8W8Hkg9sLb74YKYxuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$5NXlrxrIm8W8Hkg9sLb74YKYxuM;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$5NXlrxrIm8W8Hkg9sLb74YKYxuM;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$tryToggleFlashlight$3$DozeTriggers(Ljava/lang/Boolean;)V

    return-void
.end method
