.class Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;
.super Ljava/lang/Object;
.source "Wpa2DialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/Wpa2DialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/Wpa2DialogFragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;->this$0:Lcom/parrot/freeflight/home/Wpa2DialogFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/home/Wpa2DialogFragment$3;->val$positiveButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->isSizeAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 130
    return-void
.end method
