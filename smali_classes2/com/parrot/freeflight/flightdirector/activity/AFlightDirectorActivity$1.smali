.class Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity$1;
.super Ljava/lang/Object;
.source "AFlightDirectorActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 42
    return-void
.end method
