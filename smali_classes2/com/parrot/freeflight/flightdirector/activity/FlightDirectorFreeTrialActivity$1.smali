.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;
.super Ljava/lang/Object;
.source "FlightDirectorFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    .line 91
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    .line 109
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    .line 100
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$002(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;Z)Z

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$FlightDirectorRegistrationAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$300(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;I)V

    .line 82
    return-void
.end method
