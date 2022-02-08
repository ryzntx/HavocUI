.class Lcom/android/systemui/qs/tiles/NfcTile$1;
.super Ljava/lang/Object;
.source "NfcTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
