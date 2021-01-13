<?php

namespace App\Entity;

use App\Repository\ProductRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ProductRepository::class)
 */
class Product
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="text")
     */
    private $image;

    /**
     * @ORM\Column(type="float")
     */
    private $price;

    /**
     * @ORM\Column(type="integer")
     */
    private $quantity;

    /**
     * @ORM\ManyToMany(targetEntity=Size::class, mappedBy="products")
     */
    private $sizes;

    /**
     * @ORM\ManyToMany(targetEntity=Style::class, mappedBy="products")
     */
    private $style;

    /**
     * @ORM\ManyToMany(targetEntity=Gender::class, mappedBy="products")
     */
    private $gender;

    /**
     * @ORM\ManyToOne(targetEntity=Category::class, inversedBy="products")
     */
    private $category;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $advice;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    public function __construct()
    {
        $this->sizes = new ArrayCollection();
        $this->style = new ArrayCollection();
        $this->gender = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getQuantity(): ?int
    {
        return $this->quantity;
    }

    public function setQuantity(int $quantity): self
    {
        $this->quantity = $quantity;

        return $this;
    }

    /**
     * @return Collection|Size[]
     */
    public function getSizes(): Collection
    {
        return $this->sizes;
    }

    public function addSize(Size $size): self
    {
        if (!$this->sizes->contains($size)) {
            $this->sizes[] = $size;
            $size->addProduct($this);
        }

        return $this;
    }

    public function removeSize(Size $size): self
    {
        if ($this->sizes->removeElement($size)) {
            $size->removeProduct($this);
        }

        return $this;
    }

    /**
     * @return Collection|Style[]
     */
    public function getStyle(): Collection
    {
        return $this->style;
    }

    public function addStyle(Style $style): self
    {
        if (!$this->style->contains($style)) {
            $this->style[] = $style;
            $style->addProduct($this);
        }

        return $this;
    }

    public function removeStyle(Style $style): self
    {
        if ($this->style->removeElement($style)) {
            $style->removeProduct($this);
        }

        return $this;
    }

    /**
     * @return Collection|Gender[]
     */
    public function getGender(): Collection
    {
        return $this->gender;
    }

    public function addGender(Gender $gender): self
    {
        if (!$this->gender->contains($gender)) {
            $this->gender[] = $gender;
            $gender->addProduct($this);
        }

        return $this;
    }

    public function removeGender(Gender $gender): self
    {
        if ($this->gender->removeElement($gender)) {
            $gender->removeProduct($this);
        }

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getAdvice(): ?string
    {
        return $this->advice;
    }

    public function setAdvice(?string $advice): self
    {
        $this->advice = $advice;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }
}
