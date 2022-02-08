.class Lcom/android/systemui/qs/tiles/SleepModeTile$2;
.super Ljava/lang/Object;
.source "SleepModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SleepModeTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SleepModeTile;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/SleepModeTile;->access$102(Lcom/android/systemui/qs/tiles/SleepModeTile;Z)Z

    return-void
.end method
