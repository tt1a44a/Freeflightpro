.class public final enum Lcom/parrot/freeflight/update/UpdaterController$State;
.super Ljava/lang/Enum;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/update/UpdaterController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_ASKING_REBOOT:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_DOWNLOAD_SUCCESS:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_NO_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_NO_INTERNET:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_PREPARING_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_START_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

.field public static final enum STATE_WAITING_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 79
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_NO_DRONE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 80
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_NO_INTERNET"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_INTERNET:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 81
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_START_DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_START_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 82
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_DOWNLOADING"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_DOWNLOAD_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 84
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_DOWNLOAD_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_SUCCESS:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 85
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_PREPARING_UPLOAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PREPARING_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 86
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_UPLOADING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 87
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_WAITING_PAIRING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_WAITING_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 88
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_UPLOAD_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 89
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_ASKING_REBOOT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_REBOOT:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 90
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_PRODUCT_RESET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 91
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_INSTALLING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_INSTALL_DONE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 93
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    const-string v1, "STATE_CLOSED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_INTERNET:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_START_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_SUCCESS:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PREPARING_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_WAITING_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_REBOOT:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->$VALUES:[Lcom/parrot/freeflight/update/UpdaterController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->$VALUES:[Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/update/UpdaterController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object v0
.end method
