.class Lcom/android/systemui/qs/tiles/HeadsUpTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "HeadsUpTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HeadsUpTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HeadsUpTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HeadsUpTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HeadsUpTile$1;->this$0:Lcom/android/systemui/qs/tiles/HeadsUpTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HeadsUpTile$1;->this$0:Lcom/android/systemui/qs/tiles/HeadsUpTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/HeadsUpTile;->access$000(Lcom/android/systemui/qs/tiles/HeadsUpTile;Ljava/lang/Object;)V

    return-void
.end method
