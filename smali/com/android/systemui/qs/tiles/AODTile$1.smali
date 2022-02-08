.class Lcom/android/systemui/qs/tiles/AODTile$1;
.super Landroid/database/ContentObserver;
.source "AODTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AODTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AODTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AODTile;Landroid/os/Handler;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AODTile$1;->this$0:Lcom/android/systemui/qs/tiles/AODTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AODTile$1;->this$0:Lcom/android/systemui/qs/tiles/AODTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
