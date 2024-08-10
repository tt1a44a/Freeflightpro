.class Lcom/parrot/freeflight/core/authentication/client/ApcService$11;
.super Ljava/lang/Object;
.source "ApcService.java"

# interfaces
.implements Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/authentication/client/ApcService;->retrievePersonalData()V
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
        "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$11;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLcom/parrot/freeflight/core/authentication/model/PersonalData;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "personalData"    # Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 423
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 424
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 425
    iget v1, p2, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->synchronizeFlightData:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataSharing(Z)V

    .line 426
    iget v1, p2, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->newsletterSubscription:I

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataNewsletters(Z)V

    .line 429
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 425
    goto :goto_0

    :cond_2
    move v2, v3

    .line 426
    goto :goto_1
.end method

.method public bridge synthetic onResult(ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p2, Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$11;->onResult(ZLcom/parrot/freeflight/core/authentication/model/PersonalData;)V

    return-void
.end method
