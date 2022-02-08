.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7$1n5bcuPv0p0sN-ogaa23xTsPs7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$7;

.field public final synthetic f$1:Lcom/android/systemui/plugins/OverlayPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$7;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7$1n5bcuPv0p0sN-ogaa23xTsPs7c;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7$1n5bcuPv0p0sN-ogaa23xTsPs7c;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7$1n5bcuPv0p0sN-ogaa23xTsPs7c;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7$1n5bcuPv0p0sN-ogaa23xTsPs7c;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;->lambda$onPluginDisconnected$1$StatusBar$7(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
