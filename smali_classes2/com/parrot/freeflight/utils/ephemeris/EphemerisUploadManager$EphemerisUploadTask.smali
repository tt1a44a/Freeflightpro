.class Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;
.super Landroid/os/AsyncTask;
.source "EphemerisUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EphemerisUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mSerial:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->access$200(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->mSerial:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->uploadGpsEphemerisSync(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->access$300(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->access$302(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .line 59
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->access$300(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->this$0:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->access$302(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .line 64
    :cond_0
    return-void
.end method
