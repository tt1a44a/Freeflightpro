.class Lcom/parrot/freeflight/core/registration/RegistrationManager$1;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/InAppManager$InAppManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$1;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasedItemInventoryChanged()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$1;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$1;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->access$000(Lcom/parrot/freeflight/core/registration/RegistrationManager;)Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;->onPurchaseInformationChanged()V

    .line 143
    :cond_0
    return-void
.end method
