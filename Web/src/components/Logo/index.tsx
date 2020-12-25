import React from 'react'
import { LogoPros } from 'types/api'
import * as S from './styles'

const Logo = ({ url, alternativeText }: LogoPros) => (
  <S.LogoWrapper src={`http://localhost:1337${url}`} alt={alternativeText} />
)

export default Logo
