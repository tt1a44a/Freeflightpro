.class Lcom/parrot/freeflight/registration/RegistrationPageFragment$2;
.super Ljava/lang/Object;
.source "RegistrationPageFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/registration/RegistrationPageFragment;
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
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$2;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 1
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$2;->this$0:Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->access$100(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Z)V

    .line 109
    return-void
.end method
