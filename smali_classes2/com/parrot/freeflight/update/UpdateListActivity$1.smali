.class Lcom/parrot/freeflight/update/UpdateListActivity$1;
.super Ljava/lang/Object;
.source "UpdateListActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdateListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdateListActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdateListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdateListActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListActivity$1;->this$0:Lcom/parrot/freeflight/update/UpdateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListActivity$1;->this$0:Lcom/parrot/freeflight/update/UpdateListActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdateListActivity;->onBackPressed()V

    .line 38
    return-void
.end method
