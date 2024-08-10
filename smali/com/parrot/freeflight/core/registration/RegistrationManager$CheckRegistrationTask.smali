.class Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;
.super Landroid/os/AsyncTask;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckRegistrationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V
    .locals 2

    .prologue
    .line 686
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 687
    new-instance v0, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    .line 688
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, -0x1

    .line 692
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 693
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 707
    :goto_0
    return-object v1

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mId:Ljava/lang/String;

    .line 697
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "serial":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$600(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 704
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 707
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$1000(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 712
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$402(Lcom/parrot/freeflight/core/registration/RegistrationManager;I)I

    .line 714
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$500(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationTrial;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$1100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/registration/RegistrationTrial;->checkUserBehavior(J)Z

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onRegistrationInformationChanged()V

    .line 720
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 680
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$CheckRegistrationTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
