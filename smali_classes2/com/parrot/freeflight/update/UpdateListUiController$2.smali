.class Lcom/parrot/freeflight/update/UpdateListUiController$2;
.super Ljava/lang/Object;
.source "UpdateListUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdateListUiController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdateListUiController;

.field final synthetic val$onBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdateListUiController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdateListUiController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListUiController$2;->this$0:Lcom/parrot/freeflight/update/UpdateListUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdateListUiController$2;->val$onBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListUiController$2;->val$onBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 61
    return-void
.end method
