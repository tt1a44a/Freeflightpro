.class Lcom/parrot/freeflight/home/HomeUIController$2;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 447
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 463
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 455
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 439
    return-void
.end method
