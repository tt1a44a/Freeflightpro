.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FlightPlanFreeTrialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlightPlanRegistrationAdapter"
.end annotation


# instance fields
.field private mCreatedFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/registration/RegistrationPageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    .line 303
    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->updatePages()V

    return-void
.end method

.method private updatePages()V
    .locals 3

    .prologue
    .line 329
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 330
    .local v1, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-virtual {v2}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->updateStatus()V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 321
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 307
    invoke-static {}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$800()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$900()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$1000()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-static {}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$1100()[I

    move-result-object v3

    aget v3, v3, p1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->newInstance(ILjava/lang/String;IILjava/lang/String;)Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .line 313
    .local v0, "fragment":Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    return-object v0
.end method
