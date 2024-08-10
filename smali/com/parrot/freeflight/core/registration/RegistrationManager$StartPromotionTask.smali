.class Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;
.super Landroid/os/AsyncTask;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPromotionTask"
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

.field private final mPromoCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/core/registration/RegistrationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "promoCode"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 639
    new-instance v0, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    .line 640
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->mPromoCode:Ljava/lang/String;

    .line 641
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 645
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->mPromoCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 667
    :goto_0
    return-object v3

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$100(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$800(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 653
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 656
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->mInternetConnectionChecker:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v4}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$600(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->check(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 657
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 660
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    iget-object v4, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->mPromoCode:Ljava/lang/String;

    invoke-static {v3, v0, v2, v4}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$900(Lcom/parrot/freeflight/core/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 661
    .local v1, "result":I
    sparse-switch v1, :sswitch_data_0

    .line 667
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 663
    :sswitch_0
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 665
    :sswitch_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 661
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 632
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 673
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onPromotionStartEnded(I)V

    .line 677
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 632
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationManager$StartPromotionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
