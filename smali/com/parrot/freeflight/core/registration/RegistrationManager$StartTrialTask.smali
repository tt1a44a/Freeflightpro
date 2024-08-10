.class Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;
.super Landroid/os/AsyncTask;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartTrialTask"
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
.field private final mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V
    .locals 2

    .prologue
    .line 591
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 592
    new-instance v0, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    .line 593
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 597
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 598
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 619
    :goto_0
    return-object v3

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$500(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 608
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v4}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$600(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->check(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 609
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 612
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3, v0, v2}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$700(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 613
    .local v1, "result":I
    packed-switch v1, :pswitch_data_0

    .line 619
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 615
    :pswitch_1
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 617
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 587
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onTrialStartEnded(I)V

    .line 629
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 587
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartTrialTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
