.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$LQil7kzKsa3asmeZ1GP3e77MLnQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$LQil7kzKsa3asmeZ1GP3e77MLnQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$LQil7kzKsa3asmeZ1GP3e77MLnQ;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$6$GlobalScreenshot()V

    return-void
.end method
