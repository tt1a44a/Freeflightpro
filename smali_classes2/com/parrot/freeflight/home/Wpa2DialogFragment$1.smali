.class Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;
.super Ljava/lang/Object;
.source "Wpa2DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/Wpa2DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;->this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;->this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->access$000(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$1;->this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment;->access$000(Lcom/parrot/freeflight/home/Wpa2DialogFragment;)Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;->onCancel()V

    .line 88
    :cond_0
    return-void
.end method
