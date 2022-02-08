.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$SensorPrivacyTile$NzQtLdvA-MJKKGf1cT5C4tyoKCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyTile;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SensorPrivacyTile;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SensorPrivacyTile$NzQtLdvA-MJKKGf1cT5C4tyoKCE;->f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SensorPrivacyTile$NzQtLdvA-MJKKGf1cT5C4tyoKCE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SensorPrivacyTile$NzQtLdvA-MJKKGf1cT5C4tyoKCE;->f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SensorPrivacyTile$NzQtLdvA-MJKKGf1cT5C4tyoKCE;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyTile;->lambda$handleClick$0$SensorPrivacyTile(Z)V

    return-void
.end method
