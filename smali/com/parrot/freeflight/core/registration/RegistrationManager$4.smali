.class Lcom/parrot/freeflight/core/registration/RegistrationManager$4;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/registration/RegistrationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/registration/RegistrationManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$4;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 1
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationManager$4;->this$0:Lcom/parrot/freeflight/core/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;->performRegistrationCheck()V

    .line 190
    :cond_0
    return-void
.end method
