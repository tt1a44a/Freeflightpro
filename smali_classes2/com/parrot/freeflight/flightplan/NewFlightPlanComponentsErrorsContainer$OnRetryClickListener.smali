.class Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;
.super Ljava/lang/Object;
.source "NewFlightPlanComponentsErrorsContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnRetryClickListener"
.end annotation


# instance fields
.field private final mFlightPlanMapUIControllerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/flightplan/ui/MapUIController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 1
    .param p1, "flightPlanMapUIController"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;->mFlightPlanMapUIControllerRef:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;->mFlightPlanMapUIControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .line 64
    .local v0, "flightPlanMapUIController":Lcom/parrot/freeflight/flightplan/ui/MapUIController;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->playFlightPlan()V

    .line 67
    :cond_0
    return-void
.end method
