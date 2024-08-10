.class Lcom/parrot/freeflight/home/HomeUIController$3;
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
    .line 467
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$3;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$3;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 482
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$3;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 498
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$3;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 490
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$3;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 474
    return-void
.end method
