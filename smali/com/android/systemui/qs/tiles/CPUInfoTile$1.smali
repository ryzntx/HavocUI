.class Lcom/android/systemui/qs/tiles/CPUInfoTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "CPUInfoTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CPUInfoTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CPUInfoTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CPUInfoTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CPUInfoTile$1;->this$0:Lcom/android/systemui/qs/tiles/CPUInfoTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CPUInfoTile$1;->this$0:Lcom/android/systemui/qs/tiles/CPUInfoTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/CPUInfoTile;->access$000(Lcom/android/systemui/qs/tiles/CPUInfoTile;Ljava/lang/Object;)V

    return-void
.end method
