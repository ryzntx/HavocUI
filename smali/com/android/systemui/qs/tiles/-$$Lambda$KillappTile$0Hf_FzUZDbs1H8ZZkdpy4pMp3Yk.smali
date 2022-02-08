.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;->INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$KillappTile$0Hf_FzUZDbs1H8ZZkdpy4pMp3Yk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/tiles/KillappTile;->lambda$killApp$0()Z

    move-result p0

    return p0
.end method
