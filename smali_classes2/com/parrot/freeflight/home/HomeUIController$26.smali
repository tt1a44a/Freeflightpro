.class Lcom/parrot/freeflight/home/HomeUIController$26;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->showAppRedirectionDialog(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const-string v1, "com.parrot.freeflightjumping"

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3800(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1118
    return-void
.end method
