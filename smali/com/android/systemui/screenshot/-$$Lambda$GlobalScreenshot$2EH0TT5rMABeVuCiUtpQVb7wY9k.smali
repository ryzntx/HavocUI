.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$2$GlobalScreenshot(Ljava/util/function/Consumer;)V

    return-void
.end method
