.class final Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState$1;
.super Ljava/lang/Object;
.source "FixedWingSettingsView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 211
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;-><init>(Landroid/os/Parcel;Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 215
    new-array v0, p1, [Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState$1;->newArray(I)[Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;

    move-result-object v0

    return-object v0
.end method
