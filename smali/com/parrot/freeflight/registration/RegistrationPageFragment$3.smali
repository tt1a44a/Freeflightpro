.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/registration/RegistrationPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$200(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$300(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$200(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;->continueTrial()V

    .line 162
    :cond_0
    return-void
.end method
