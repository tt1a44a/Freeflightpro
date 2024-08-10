.class public final enum Lcom/parrot/freeflight/update/UpdaterController$Event;
.super Ljava/lang/Enum;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/update/UpdaterController$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_CANCEL:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_DOWNLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_DOWNLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_GAMEPAD_LIST_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_INTERNET_NEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_PAIRED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_RETRY_DOWNLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_RETRY_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_START_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_UPLOADING_PROGRESS:Lcom/parrot/freeflight/update/UpdaterController$Event;

.field public static final enum EVENT_UPLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_GAMEPAD_LIST_UPDATED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_GAMEPAD_LIST_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 98
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_PAIRING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 99
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_PAIRED"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 100
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_INTERNET_NEEDED"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INTERNET_NEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 101
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_DOWNLOADING_UPDATED"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 102
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_DOWNLOADING_SUCCEEDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 103
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_DOWNLOADING_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 104
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_RETRY_DOWNLOAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_DOWNLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 105
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_START_UPLOAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_START_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_UPLOADING_PROGRESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_PROGRESS:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 107
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_UPLOADING_SUCCEEDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 108
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_UPLOADING_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 109
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_RETRY_UPLOAD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 110
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_REBOOT_DRONE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 111
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_INSTALL_DONE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 112
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    const-string v1, "EVENT_CANCEL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_CANCEL:Lcom/parrot/freeflight/update/UpdaterController$Event;

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/parrot/freeflight/update/UpdaterController$Event;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_GAMEPAD_LIST_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_PAIRED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INTERNET_NEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_DOWNLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_START_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_PROGRESS:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_CANCEL:Lcom/parrot/freeflight/update/UpdaterController$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->$VALUES:[Lcom/parrot/freeflight/update/UpdaterController$Event;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/update/UpdaterController$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/UpdaterController$Event;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/update/UpdaterController$Event;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->$VALUES:[Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/update/UpdaterController$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/update/UpdaterController$Event;

    return-object v0
.end method
