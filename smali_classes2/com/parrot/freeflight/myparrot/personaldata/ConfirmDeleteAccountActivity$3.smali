.class Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;
.super Ljava/lang/Object;
.source "ConfirmDeleteAccountActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->onConfirmDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

.field final synthetic val$authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;Lcom/parrot/freeflight/core/authentication/AuthenticationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->val$authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->onResult(ZLjava/lang/Void;)V

    return-void
.end method

.method public onResult(ZLjava/lang/Void;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "data"    # Ljava/lang/Void;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->val$authenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->disconnect()V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->finish()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
