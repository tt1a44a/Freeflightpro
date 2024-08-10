.class Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FixedWingSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectedCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;

    .prologue
    .line 189
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/FixedWingSettingsView$SavedState;->selectedCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void
.end method
