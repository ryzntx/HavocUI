.class Lcom/android/systemui/qs/tiles/SleepModeTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "SleepModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SleepModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SleepModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/SleepModeTile;->access$000(Lcom/android/systemui/qs/tiles/SleepModeTile;Ljava/lang/Object;)V

    return-void
.end method
