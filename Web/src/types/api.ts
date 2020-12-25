export type LogoPros = {
  alternativeText: string
  url: string
}

export type HeaderProps = {
  title: string
  description: string

  button: {
    label: string
    url: string
  }

  image: {
    alternativeText: string
    url: string
  }
}

export type LandingPageProps = {
  logo: LogoPros
  header: HeaderProps
}
