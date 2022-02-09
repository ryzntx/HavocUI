.class Lorg/lineageos/internal/statusbar/NetworkTraffic$1;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p3}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->-set1(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->-get2(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->setTextColor(I)V

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->-wrap2(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    return-void
.end method

.method public setFillColors(II)V
    .locals 1

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p1}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->-set0(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/lineageos/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p2}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->-set5(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I

    return-void
.end method
